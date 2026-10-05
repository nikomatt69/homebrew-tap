# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-05T21:51:31.513Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.430.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.430.0/nikcli-ai-darwin-x64.zip"
      sha256 "c3962ce885c74a23f4d9c0bcb8b949c6384cc1a902c109f01834ab338319584e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.430.0/nikcli-ai-darwin-arm64.zip"
      sha256 "daf36a91f768d657752497bc55976c3f1bb88549346aa78914bba053fc604969"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.430.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "c2e093c24dce6ebf4cd3746750fd551523f09f2ea16eed493872bfa95a2bb5c5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.430.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "eaa7ddd2765f2a30e406f458041cf92901326beef38c7aa5dc0fbaf92d1f1ba8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

