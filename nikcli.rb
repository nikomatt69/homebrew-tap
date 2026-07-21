# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-21T18:57:09.696Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.186.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.186.0/nikcli-ai-darwin-x64.zip"
      sha256 "0a8f40cf970bd742bb36ad27be6462af810f1bcad31f52054261f0994368ca9b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.186.0/nikcli-ai-darwin-arm64.zip"
      sha256 "da1cb78d0dbe2defbf750730057197022fa78b906912aefc5c503d4f432ad88e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.186.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "954d353a0dab995c157c31df1da7b4319879a020c55117ce4c89a3e300521c40"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.186.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4f543acc4574f629de10d78d24c865978ba7afcf5c56dd62e67569c7b1bf6882"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

